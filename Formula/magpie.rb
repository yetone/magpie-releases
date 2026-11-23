class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4711/magpie-cli-darwin-arm64"
      sha256 "a20d23694401fae30fc1266f979087d90f909dadf3e2a0f4070cad2e6f28eebd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4711/magpie-cli-darwin-amd64"
      sha256 "dde72f00f701014e5dd01c43422adc21bcc310a8cffaf77c6d1b2ce994cb5098"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4711/magpie-cli-linux-arm64"
      sha256 "2de43e180d8d1cb3ceb7f39c9ce56e76375acf23d2d8cabb40d88768060b3ed5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4711/magpie-cli-linux-amd64"
      sha256 "f4a6666658d847e20ca0fc409d869889f3586159db8a8c3bf1d107c8cd9e7d2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
