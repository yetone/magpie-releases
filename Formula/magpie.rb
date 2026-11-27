class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4928/magpie-cli-darwin-arm64"
      sha256 "c5a007f13f31d1fc2b63729e10d3541e4d24004877f18a0e2af660d0ccb02004"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4928/magpie-cli-darwin-amd64"
      sha256 "5e064d2b6833def61dd259d9c59f19ded0f4e110d683fa622d0f7c4bb7ce033c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4928/magpie-cli-linux-arm64"
      sha256 "fe526fd3837a6c9998f3ddb9ee9488331e4bca92d77d70513376b00622a9fc20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4928/magpie-cli-linux-amd64"
      sha256 "fbec69649533e91879d5a572d4242e83de322f62476949f4cb673e9d210b2998"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
