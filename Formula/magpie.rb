class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2758/magpie-cli-darwin-arm64"
      sha256 "c5be16b8fd71e801cf1d85755f460f037414ed097f584c4ca309b26cfef65e21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2758/magpie-cli-darwin-amd64"
      sha256 "a649898d3bacfc5c6763a95b32066e57a82d43472e41b871582d0b08ce70705f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2758/magpie-cli-linux-arm64"
      sha256 "ed63045420428694b28f2f2071ba34934b196add902ad44cd2aaa7513eba1456"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2758/magpie-cli-linux-amd64"
      sha256 "ad54afb11ab4390acb1e328708756038909e41bc65cb96cca959477b2dfed23b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
