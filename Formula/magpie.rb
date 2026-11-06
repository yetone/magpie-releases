class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3128/magpie-cli-darwin-arm64"
      sha256 "96b57e376b19718c3324b9c8db7d5d163fb8e176bed926c75654272c900824d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3128/magpie-cli-darwin-amd64"
      sha256 "494c8c2243afac02d5c1fde4221e759780019ff490ad552543e01fe339d3a8c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3128/magpie-cli-linux-arm64"
      sha256 "3a314da6cf0d00d4c44fa7c48194f3c15afb2bf3a0b33e7c3842deda18c91b30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3128/magpie-cli-linux-amd64"
      sha256 "c571aadd3fe177f778c8501ce0e8bc1f62c58ac394a4b2dba7ec5fb92e32a19c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
