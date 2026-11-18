class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4450/magpie-cli-darwin-arm64"
      sha256 "1a1529ad4a513520123c724a78ceabd652ca45a4f13653a69a23e740a854365e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4450/magpie-cli-darwin-amd64"
      sha256 "156ba66bb2b5ff8c4de1e32b618fe806dd1c2e737e6530146e2f25261ffea738"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4450/magpie-cli-linux-arm64"
      sha256 "f209e064c5ee233eb0f27ce8391b3b3908d09237bc482c62148e53cb223cf4ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4450/magpie-cli-linux-amd64"
      sha256 "0248b08ab5727d09a15ae7bb1779c30b207808e711b280d5cac269e7caabbe82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
