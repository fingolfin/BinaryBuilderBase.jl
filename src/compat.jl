function extract_kwargs(kwargs, keys)
    return (k => v for (k, v) in pairs(kwargs) if k in keys)
end

extract_fields(x) = Dict(String(name) => getfield(x, name) for name in fieldnames(typeof(x)))

# Trailing directory separator matters for `basename`, so let's strip it to
# avoid confusion
strip_backslash(path::AbstractString) = isdirpath(path) ? dirname(path) : path
