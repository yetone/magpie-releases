class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2130/magpie-cli-darwin-arm64"
      sha256 "c03957612839aa87b55e8a0af264e86e7c45e7377bc0fa29f56ea044e5df4bbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2130/magpie-cli-darwin-amd64"
      sha256 "f3ac7c372fbce608a2232f4b05a96fe231cfa1f8bd725653a379ec93466d17f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2130/magpie-cli-linux-arm64"
      sha256 "3ac83ea9e30e754b0c2998d8a434c086337ebbd0388852b58912cb48c6aa5a8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2130/magpie-cli-linux-amd64"
      sha256 "4103e1325adf5fa0b7ce0d3b1fd6ed29122d7e1faef93d3047c12b653f172e94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
