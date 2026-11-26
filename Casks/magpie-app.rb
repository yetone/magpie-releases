cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4902"
  sha256 arm:   "7d6f941298d0c11c5cf2d37a7c27f329ba121e3b1dd9dd8569c56dd2a0aed227",
         intel: "711e06dfd76a8280b244468d1cdea53c5527bd71cbbaa52ca5b1d084b830050b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
