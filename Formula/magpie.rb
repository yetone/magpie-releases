class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2409/magpie-cli-darwin-arm64"
      sha256 "422043b18f0b76b51f9d93f865bb8773dcc1f99faa1b9039ff803c74fdc65bd3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2409/magpie-cli-darwin-amd64"
      sha256 "acb349550db3f4304291778c7afbe0448ef1384ad3bd91d8c2846f8520b4eb92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2409/magpie-cli-linux-arm64"
      sha256 "6fc3138d2d347f2467f950669c10faa93c37c9bcd94fd626861a0999e65d6410"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2409/magpie-cli-linux-amd64"
      sha256 "651a5def886c65d4691ab1739d6d3b8e1f4f519873c54ad76541b74a7825027a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
