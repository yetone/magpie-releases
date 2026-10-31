cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2347"
  sha256 arm:   "4b72bddd0dda90d1c72e5d1ac75a6a0c3716affd1f846a84531d38efbb1feeea",
         intel: "8522541e5ecbaa9ddacbeda96be7a4f8349eae43d21a59928655dd35280281dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
