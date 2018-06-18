FROM kong
RUN apk update && apk add git
RUN luarocks install lua-resty-jwt
RUN luarocks install kong-plugin-oidc-acl
RUN luarocks install kong-oidc-auth-akshay
ENv KONG_CUSTOM_PLUGINS oidc-acl,kong-oidc-auth-akshay
