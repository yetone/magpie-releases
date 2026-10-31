cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2315"
  sha256 arm:   "0f785854ce851cb70587e0b10b17f18e2d292116054e3408d731087a4ff3a43c",
         intel: "0ea65790d8817ec888cba43dd80b36772d3dd7cd99ac16e20acaa1c33b9c17ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
