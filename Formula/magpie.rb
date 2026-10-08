class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1116/magpie-cli-darwin-arm64"
      sha256 "cf33d1c80e99119a4940d65b1b5b26b27f800437bb4fac6141eeb869238a847c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1116/magpie-cli-darwin-amd64"
      sha256 "69196f90d310065901d8a7949c9045ed14a7b4edfc11ca1bed987e99bd55f85c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1116/magpie-cli-linux-arm64"
      sha256 "816119f1ead47b5b33dfa7812338e0e9a8f2e687d2363b8770e6f9d62f284d7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1116/magpie-cli-linux-amd64"
      sha256 "7c42438407d4ad68bf405370483fe1ba339f4fe4f57b8cf3b95ffa3f09a70761"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
