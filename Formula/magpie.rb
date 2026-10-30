class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2139/magpie-cli-darwin-arm64"
      sha256 "3b297b51fb0182f82ca354fb00abcba96bc7e92e064dd82b3e153826bc13efa2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2139/magpie-cli-darwin-amd64"
      sha256 "db9a4cbe0fa89c2cd0df07340119cbcd8801f41fc584288851c3bc1231fdad89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2139/magpie-cli-linux-arm64"
      sha256 "51b7dfbf8d233f7498667556677f60f688255c59e3def9347763d1dd75c53602"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2139/magpie-cli-linux-amd64"
      sha256 "895e9726332e62fea9ecdf1174ed86d5b714fe39ad4a77c60e8336720fe1c2c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
