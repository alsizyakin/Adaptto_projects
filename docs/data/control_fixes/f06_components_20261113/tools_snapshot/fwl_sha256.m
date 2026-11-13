function hash = fwl_sha256(path)
% Exact file hash, independent of SLX metadata interpretation.
fid = fopen(path, 'rb');
assert(fid >= 0, 'fwl:file', 'Cannot read %s', path);
cleanup = onCleanup(@() fclose(fid));
md = java.security.MessageDigest.getInstance('SHA-256');
md.update(fread(fid, Inf, '*uint8'));
hash = lower(reshape(dec2hex(typecast(md.digest(), 'uint8'), 2).', 1, []));
end
