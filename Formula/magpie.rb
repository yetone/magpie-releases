class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2809/magpie-cli-darwin-arm64"
      sha256 "38fb8d973bc7da0dddc70d2d2f65374578d39f60d1f221320ba01aee0eac0875"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2809/magpie-cli-darwin-amd64"
      sha256 "d6f0026b6555db79fe59c915f564927da4f595b6979cdfdc03896e8897b2296d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2809/magpie-cli-linux-arm64"
      sha256 "1ae063a01b5795da382a7fcef6f9b7c766142f20590c881f5d6d80a6e2baa95b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2809/magpie-cli-linux-amd64"
      sha256 "b86f436fb6fd00e26c1b8e844f953e735702ab0f8ddf5207955639cc293796cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
