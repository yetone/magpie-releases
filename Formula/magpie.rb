class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2789/magpie-cli-darwin-arm64"
      sha256 "d851c1d45babadd9f832e1ff27dc04758e5d91360fbe6e9bae68ba64f414daa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2789/magpie-cli-darwin-amd64"
      sha256 "4d8f55ec1a10a65b67f5f1dc5911610cb85e95ec17bc5c85f7d915f8519f3a29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2789/magpie-cli-linux-arm64"
      sha256 "e9f2403e154fd7d25b5376f005e7e094e755a05c5eb5b72692b3f16ffc260dd7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2789/magpie-cli-linux-amd64"
      sha256 "025f5dee4f19a31846c5d68d42a377064d8792cbf5aa4ee12fc2780d86906776"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
