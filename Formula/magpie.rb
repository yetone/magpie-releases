class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4085/magpie-cli-darwin-arm64"
      sha256 "85e375db17dfe9e24a835442d9f383f6c9ecff3ea1834d9ba083641f65ec3b97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4085/magpie-cli-darwin-amd64"
      sha256 "458d58dabfb90ca1239c0612ace55124e7f5d2b3c0283d049bfbd7081c7783a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4085/magpie-cli-linux-arm64"
      sha256 "3b77799773a1f767735fc3b22baa8d048b45e5eb28e60a3b2551e720d9c45ebd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4085/magpie-cli-linux-amd64"
      sha256 "c7f0a9f8100bdb28cd729eb2645020d321f2f94d7765a0548874d11167e4d1b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
