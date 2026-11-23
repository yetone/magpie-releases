class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4699/magpie-cli-darwin-arm64"
      sha256 "1dcdf35eb84c45c4c49b45111c254882f6098475d8a9eb1622018217da646f8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4699/magpie-cli-darwin-amd64"
      sha256 "a23508bbdffa82335e8e0994c7db72b56a33702b17339f43b8d39b962d389443"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4699/magpie-cli-linux-arm64"
      sha256 "b0fc891d8732dc53947930bf3668efb85b5a24f5ffcce5a4766c874e977cabd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4699/magpie-cli-linux-amd64"
      sha256 "67b9ebf05d5895b0adf9519a5ee082ea01622068bcdb5612a96d1fd5b61c8932"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
