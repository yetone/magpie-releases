class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3989/magpie-cli-darwin-arm64"
      sha256 "f5030fcb5e88e29a275aa95eb1b956363d6ec58c18d003d357900ef0b1169f71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3989/magpie-cli-darwin-amd64"
      sha256 "5f8f20c6cf84b8cbb5577b4de7c791fb2b4e49c9d3ee0f0f9efcd2b465df85c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3989/magpie-cli-linux-arm64"
      sha256 "0502e8ae81d43771760d1ac2b0ce1467dd0ce160e2aa767e31251134a897cf04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3989/magpie-cli-linux-amd64"
      sha256 "3dbb83021fd186fda70ec7e51f9b8b9b1563d71dcd94cf6c149d2b1fc82485b5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
