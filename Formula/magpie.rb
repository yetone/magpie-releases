class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3912/magpie-cli-darwin-arm64"
      sha256 "b308f264d6a98cda8a6e3b2562960c20d9d024628c8c42830833e24833cbfa1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3912/magpie-cli-darwin-amd64"
      sha256 "ea0b59c17c88eb96a983f0f029e26279a9efedb26bc26dac5fc4c1153995cef0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3912/magpie-cli-linux-arm64"
      sha256 "5921709d3379f6dd24d640d353fa0a5c06ec55b4fb6f4127c4b6b791e7ea1f50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3912/magpie-cli-linux-amd64"
      sha256 "20afce9b04635176eee409b117fffe8ebdfe2273d221f700d7b1b80e0b2fbbfe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
