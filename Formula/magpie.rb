class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.926/magpie-cli-darwin-arm64"
      sha256 "6ac43b9528052cdfc98e87f43199a53ba0158b052571ade8d5bba35491ea70f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.926/magpie-cli-darwin-amd64"
      sha256 "78e15d63ea5b0b8de5fd78bbba2fc1e291a0e35afe7587f6f067cfdf1f715e0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.926/magpie-cli-linux-arm64"
      sha256 "905129d83ace4d4a161deaf727b3938de992674b68f82f6c27dae6aad13c5969"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.926/magpie-cli-linux-amd64"
      sha256 "f0cb399dc0f2688ac66401433d70db91951f860df67e71223d6ebba9ad0c18f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
