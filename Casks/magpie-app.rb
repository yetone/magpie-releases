cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3427"
  sha256 arm:   "cfd473e068cf79852fa28a0c026fe509bfd5591e594f3b8c05904bf212539d12",
         intel: "376a45e3324714832e930f9e455ef15345ee50c49d5f0357fc7bcc5ffff9a851"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
