class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5024/magpie-cli-darwin-arm64"
      sha256 "26efbf26fe2ea5a74bef89113322e2a807622fb588bd1751b983717cdd6a14f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5024/magpie-cli-darwin-amd64"
      sha256 "9713e7a38c6a06b32e7718285f410769ed9429ada4a155388e1c391bb4c56b90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5024/magpie-cli-linux-arm64"
      sha256 "337fec99a2ce29c97b7da8f8ec0e1eb4a07fd80f6610cb93a19d95cdfd692cff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5024/magpie-cli-linux-amd64"
      sha256 "6777abf2f41d372a87901e033ec58d18306d473071fc9f76bf5498880d8e7bac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
