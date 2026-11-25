class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4795/magpie-cli-darwin-arm64"
      sha256 "1091634c4b3e35ebbf48b674c4f1ac7c069358619556d1d850b58ca078cfa224"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4795/magpie-cli-darwin-amd64"
      sha256 "7e00428c36a18610cd88b519ecd228445ba9111ee9fbc1d6f69a8e14c8b96d12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4795/magpie-cli-linux-arm64"
      sha256 "9b55fc8053202ef7649460af38cf18181545e3076193c5e1025b72597ab7aa73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4795/magpie-cli-linux-amd64"
      sha256 "b85fd82cd1b76385a75171f3990335ca79a7b57b1430353fb416433c5bbb16eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
