class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3349/magpie-cli-darwin-arm64"
      sha256 "59e75bd42440c5bae9dccbd0cbfaf4d2c635a97e861987e8cbf28a3ffb785a64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3349/magpie-cli-darwin-amd64"
      sha256 "0225a046a9f0fdfa2a242378d0ae5b3258d362c4d533516a3d127dfbb507a2c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3349/magpie-cli-linux-arm64"
      sha256 "b02b45cff11f64fbef0c3751f53cbb26bf55d3b68049a10e2a33dac0ca7388ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3349/magpie-cli-linux-amd64"
      sha256 "d55ff403514fef14012ad7b7f14e3dd36a5b80a5bb3cee4e827dc98e8cb7fe3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
