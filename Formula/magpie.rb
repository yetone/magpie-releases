class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3368/magpie-cli-darwin-arm64"
      sha256 "d7132589224b8772c5fa271ad6e0ba8caaf8092fe8e9ffa4dce4380a275d326a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3368/magpie-cli-darwin-amd64"
      sha256 "4cf03185bc5b3c13fab2d200e0c2c8162524ce3bd0074e4e90a991f6dca60941"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3368/magpie-cli-linux-arm64"
      sha256 "1bc051f9ee9ac839761257ca738aebd58248cbb131b7ffd980d134a070355ae1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3368/magpie-cli-linux-amd64"
      sha256 "514cad4c67359cbd87b03935e216273943a1dd8f70d978db0688cac58aae4810"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
