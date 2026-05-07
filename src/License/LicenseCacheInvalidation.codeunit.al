codeunit 50100 "License Cache Invalidation"
{
    [EventSubscriber(ObjectType::Table, Database::License, 'OnAfterModifyEvent', '', false, false)]
    local procedure OnAfterModify(var xRec: Record License)
    var
        Url: Text;
        Client: HttpClient;
        RequestMessage: HttpRequestMessage;
        ResponseMessage: HttpResponseMessage;
        ResponseContent: HttpContent;
        ResponseText: Text;
        Result: Boolean;
    begin
        RequestMessage.Method := 'DELETE';
        Url := StrSubstNo('https://satellite-production.up.railway.app/api/Licenses?tenantId=%1&&extensionId=%2', xRec."Tenant Id", xRec."Extension Id");
        RequestMessage.SetRequestUri(Url);

        if not Client.Send(RequestMessage, ResponseMessage) then
            Error('HttpRequest was not successful');

        ResponseCOntent := ResponseMessage.Content;
        if not ResponseContent.ReadAS(ResponseText) then
            Error('Could not read response content');

        Evaluate(Result, ResponseText);

        Message(Result.ToText());

        Message(xRec."Tenant Id");
        Message(xRec."Extension Id".ToText());
        Message('License table modified');
    end;
}