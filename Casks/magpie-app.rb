cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3070"
  sha256 arm:   "1f91fedf687b4b7e5164e655bb055ea3c87f29325a2af051e66cb3e49b2b94b0",
         intel: "2388a7597cc6cdc78641c22fcb4c594ff4ad3eda5dcaa0f26b5c54360dd7164e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
