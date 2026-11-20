class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4601/magpie-cli-darwin-arm64"
      sha256 "472e838b768d75997366ce7805f47990114ad388f1e03a50cc1e8c34b1d97412"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4601/magpie-cli-darwin-amd64"
      sha256 "029faae321016abd3f79a9c8fccc745a25169f7d537fe2c36251f88e908692f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4601/magpie-cli-linux-arm64"
      sha256 "efd37c623a944c9593c62ea6805c57878dc24f4c3d4159022a72dd97571c5302"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4601/magpie-cli-linux-amd64"
      sha256 "ff28e8e4a22609ca9b8f7f985382b64159e9cda1c8d670e54fcbd0dbba666411"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
