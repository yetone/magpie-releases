class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2052/magpie-cli-darwin-arm64"
      sha256 "5031be21abe41455b7a4f19df64b6cd0c123fbc4bc1444efd10d4697a99d8c11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2052/magpie-cli-darwin-amd64"
      sha256 "0dba24fb37d20a1a79dbb112c5805cdbe22331af36726f52ee363733a715a650"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2052/magpie-cli-linux-arm64"
      sha256 "c287b5c5b542cdd7a049752dfa06e536e08de2f5e05539a7387b2cb49bc55656"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2052/magpie-cli-linux-amd64"
      sha256 "d438d30e37c35e2bc501b90d1497aec3ab13bde5f0513953eb62d713374a7d60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
