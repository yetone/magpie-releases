class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4270/magpie-cli-darwin-arm64"
      sha256 "cf11975acbb12ccdafb99a96c347e5d062013d50e37e9475969e159ffc951f92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4270/magpie-cli-darwin-amd64"
      sha256 "b1f6f5c06005ce91cce9515a7ced5690f587f68125902d888781725ec7d435ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4270/magpie-cli-linux-arm64"
      sha256 "f2659492b2f191912500596757c0dc936e94e54b7545742495d7bafdd2623359"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4270/magpie-cli-linux-amd64"
      sha256 "ec315ff1809e1699688f8d4d3a25f32be7017e960688bf03c8fd1b28969c275a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
