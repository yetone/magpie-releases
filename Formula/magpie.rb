class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4445/magpie-cli-darwin-arm64"
      sha256 "4bb0ce88e305117c084d0cef1775bf201773c34b6a5a9ac39137e3f1003a40a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4445/magpie-cli-darwin-amd64"
      sha256 "c25299960f9f251e840a0b17393ce307fe666ef4519935b45fbbe1cb073c0f5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4445/magpie-cli-linux-arm64"
      sha256 "ecda318f263d651224d1e2b3507dce4b1fbf92be6e78cd02bff6344ce2fe3ad8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4445/magpie-cli-linux-amd64"
      sha256 "1bb76068af79160383f8758078da9afc93e9d9f2ca39f956af2abad71997e54e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
