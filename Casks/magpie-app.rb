cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2144"
  sha256 arm:   "be21d0fb7d97fe1ea3377a8c68d3dff11afac620d4f77956df12118e14899b49",
         intel: "62dbdc6a9601b6f4e4574439fa9c494f3ab0e6b7d8a63de0294bece9d8f8b754"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
