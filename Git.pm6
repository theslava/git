use NativeCall;

class Git::Repository is repr('CPointer');

has $!repo;

my sub git_repository_open(CArray[CArray[int]], Str --> int)
	is native('libgit2')
	{ * }

method open(Str $path) {
	return git_repository_open($!repo, $path);
}
