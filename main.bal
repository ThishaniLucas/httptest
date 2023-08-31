import ballerina/http;

listener http:Listener endpoint = check new(9191);
service /test on endpoint {
    resource function get path(http:Request req, http:RequestContext ctx) returns string {
        return endpoint.getConfig().host;
    }
}
