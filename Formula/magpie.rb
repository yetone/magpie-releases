class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3184/magpie-cli-darwin-arm64"
      sha256 "a6fa854fdd57b50668f5ae30a0b4f4b832f9620dcffb496ee793069f895a48d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3184/magpie-cli-darwin-amd64"
      sha256 "9684673a2a5c1de8ce32bd3ce26cd7e831cb662983243eb51dd2e4e3a17f6d34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3184/magpie-cli-linux-arm64"
      sha256 "500ef3c47723934fa2c67be6fb5f1afbe39667b3831da19a73b9f46d7962f594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3184/magpie-cli-linux-amd64"
      sha256 "e8c8f536227dc99b2bbe0355ad55dad838b36d99cbd5f0fcd4ae9fe6875af92c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
