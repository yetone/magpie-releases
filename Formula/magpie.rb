class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3883/magpie-cli-darwin-arm64"
      sha256 "019879ba989982491a327e8a4017886bca5e548197d3b1044573164ef87caf65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3883/magpie-cli-darwin-amd64"
      sha256 "3c988f36f6f39a794b70072bd6f7ed85a4f85a762c4e81938204e10c6bbf112b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3883/magpie-cli-linux-arm64"
      sha256 "5be8b518dd6fb48b6b6f55bff4d6ce38ef57fe2fcfa3e6b9a92b216a84e8af95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3883/magpie-cli-linux-amd64"
      sha256 "b2a3b623ab610ea99593fb2f7ecbbe2581b71869fb17aeb9878c3517939a10f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
