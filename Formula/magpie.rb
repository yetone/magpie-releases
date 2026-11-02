class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2722/magpie-cli-darwin-arm64"
      sha256 "723907d750c62b6e350b4bdc665c52a3f2bae0f5ab83540db12ec708ee652166"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2722/magpie-cli-darwin-amd64"
      sha256 "fa770143cbdd457f68260eed851cf12a4469a654dd87be2bc8223896d4f2e094"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2722/magpie-cli-linux-arm64"
      sha256 "5eff299747a70233f073093c09590d6fd13fd98373611f1018268cf103bca82b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2722/magpie-cli-linux-amd64"
      sha256 "da6ccb9fcdcbeb3e8e736e89f45a5e6f40af605fff2ec73697751d0f1632cf36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
