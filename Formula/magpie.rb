class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3141/magpie-cli-darwin-arm64"
      sha256 "a90d1f7b51dc96453b1174055c7ecd362f20cfc35e8d929f9a698d046d1b4fcb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3141/magpie-cli-darwin-amd64"
      sha256 "c23953e60caed72c0b2455fe477115ef46eec96ff81847d5586568d6de3b30e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3141/magpie-cli-linux-arm64"
      sha256 "b63d48b893b00e49c93818bea5f19841f359864af399a945864e2f8f6baefff9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3141/magpie-cli-linux-amd64"
      sha256 "34f06384528da69df074b69f95cda89acded74f69e6d37d4ed3662cb3c514966"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
