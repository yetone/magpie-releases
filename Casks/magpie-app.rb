cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.978"
  sha256 arm:   "c7658b12c790d618f9b2b4986f2e38aea18c269b7b209adf2201de69edf0e33a",
         intel: "f7057e28f8813802e730e2e376ad6079bd92c335a713e53bfa7d0f3f05605467"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
