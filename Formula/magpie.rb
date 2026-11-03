class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2871/magpie-cli-darwin-arm64"
      sha256 "41a04683022a495168bd5ad7404c959205113126f6beebacb2be390e48caf383"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2871/magpie-cli-darwin-amd64"
      sha256 "00c049a0bcf9f387a5dcaf57c98ea3f742af47ba4d94bcb8d07a419e562217d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2871/magpie-cli-linux-arm64"
      sha256 "0549db6d7f6afed9c86fe14d91af30b5e2ef0c7c981604617844abcbdaf6aa07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2871/magpie-cli-linux-amd64"
      sha256 "2b74886051e1f4d8d539fa4272352750d2b60034d5e2f441030d503248945084"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
