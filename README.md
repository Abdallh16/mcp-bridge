# MCP Bridge

Generic remote MCP gateway for a ChatGPT plugin.

POST /mcp JSON-RPC methods: connect_mcp, discover_mcp_tools, call_mcp_tool, mcp_status, disconnect_mcp.

GET /health returns service health.

v0.1 supports remote HTTPS Streamable HTTP MCP endpoints and blocks local/private destinations.