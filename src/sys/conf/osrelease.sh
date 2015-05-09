# ©2015 Lambda Project, Quinn Evans

case `git branch | grep '^*' | cut -f2 -w` in
    work)
	echo ∞
	;;
    master)
	echo STABLE
	;;
    *)
	echo `git tag --contains | head -n 1`
	;;
esac
