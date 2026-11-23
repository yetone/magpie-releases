class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4688/magpie-cli-darwin-arm64"
      sha256 "e8374b8e869f98a6023b4e162f4d3001850cf0df2682a7dae3446d921ef21dc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4688/magpie-cli-darwin-amd64"
      sha256 "c30e9241ef6d2e8a2d4fc73cb3008a26b2e6d7b169ea5d137b912468bcc78363"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4688/magpie-cli-linux-arm64"
      sha256 "ba50cc26654083c17244f95ad74d8804772fa7142c7eb8696b62024e2352be75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4688/magpie-cli-linux-amd64"
      sha256 "aec0f10aa65fd376df562c5f786e91f4356d683d964d8d3c9294c4861c6245b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
