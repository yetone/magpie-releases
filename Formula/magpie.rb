class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3541/magpie-cli-darwin-arm64"
      sha256 "ffe7c253dbdabe9eda1f0586b7167c31868f93f721201815c4b9469f735b9e19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3541/magpie-cli-darwin-amd64"
      sha256 "63afb681b58e3add170e797de95ee927fe561e4dc824f678ae81f161a161a70f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3541/magpie-cli-linux-arm64"
      sha256 "020d82ce260ab5efeb60f665c2ecc2189630b913170f077636766ca890a3b032"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3541/magpie-cli-linux-amd64"
      sha256 "259a2e92edb94b36c8223bbf463cbd8a79cf61579a08022a1f418c7643ac2198"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
