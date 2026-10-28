class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1950/magpie-cli-darwin-arm64"
      sha256 "ed7613421cc76d7ae77820e45e869041ea591056d9f32784ef0ed6e5dd82ab60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1950/magpie-cli-darwin-amd64"
      sha256 "d8eebd72a4d4304f4fc03c72dd334b56486aa94d7612015f2403c6c4ee144041"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1950/magpie-cli-linux-arm64"
      sha256 "d0d05e71278888bb44bf9c1c8343a4dc52a02bbed2bf84bcabf2343504a69003"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1950/magpie-cli-linux-amd64"
      sha256 "effd93b2797f85018a5d3280570a4c6625d37e605f0cad97b3d47eecaf19940f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
