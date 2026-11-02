class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2701/magpie-cli-darwin-arm64"
      sha256 "a29911e1f73ad1d59ef4995ab804c5fc768091967cb7f25edbc9094c1eef5140"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2701/magpie-cli-darwin-amd64"
      sha256 "5f853e12b2f56a0724e971bc0e03e05f8638b05a864e484ab9978d30cd23d61e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2701/magpie-cli-linux-arm64"
      sha256 "7f4d7be020d07195445b016de5a1a17f04680969dfd29def8f33292e50722a2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2701/magpie-cli-linux-amd64"
      sha256 "5bc82a2d65050357f45b1bb9ce14ec44495cb9b57405624c8267850436770d99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
