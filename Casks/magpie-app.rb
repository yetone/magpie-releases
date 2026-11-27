cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4950"
  sha256 arm:   "94229d301bad30fe081364daf8b0cd9da9ba2b02a8c8b7b57dd6cea035d45433",
         intel: "fd70a6da033c3ea4168a0b61e97a5af798d0a55bd9f58b8b9e44f5478068d261"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
