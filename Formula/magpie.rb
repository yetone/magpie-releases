class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3364/magpie-cli-darwin-arm64"
      sha256 "dcdb3adf334bf48a29b3735310bbb7f7e3e53070d88ad20540b4298bf37518a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3364/magpie-cli-darwin-amd64"
      sha256 "45e42c45feddc0d7f37431f02e214d82fc9e20ca646ec0e3c9d824561a20c26c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3364/magpie-cli-linux-arm64"
      sha256 "74c1512e95f8233a069514491fe7d9b27663edf82147e7615db1bc01f5e252bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3364/magpie-cli-linux-amd64"
      sha256 "2d9a8c52959cd4e3804751289d91fbbe4f4034189f22ec8b4c1881258c9297d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
