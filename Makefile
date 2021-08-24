PLATFORM?=linux_x64

build:
	@PYTHONOPTIMIZE=1 python3 -m PyInstaller aws_ipadd --onefile --clean --osx-bundle-identifier com.piyushsonigra.os.aws_ipadd --nowindowed
	@chmod +x dist/aws_ipadd

package:
	@cd dist && tar -czvf ./aws_ipadd_$(PLATFORM).tar.gz aws_ipadd
