import sys.io.Process;

class Main {
	static function main() {
		var process = new Process("adb shell pm list package");
		var list = process.stdout.readAll().toString();
		if (process.exitCode() != 0) {
			throw "未链接设备、设备未授权或者设备不支持adb shell命令";
		}
		var clearPkg = Sys.args()[0];
		if (clearPkg == null) {
			throw "请提供至少两个节点的包名：*.*";
		}
		trace("开始清理对应包名的安装包：" + clearPkg + ".*");
		var apks = list.split("\n");
		for (item in apks) {
			if (item.indexOf(clearPkg) != -1) {
				// 开始清理
				item = item.substr(item.indexOf(":") + 1);
				var code = Sys.command("adb uninstall " + item);
				trace("清理：" + item + '[${code == 0 ? "成功" : "失败"}]');
			}
		}
	}
}
