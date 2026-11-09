cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3369"
  sha256 arm:   "454b924afd1b937656b1e880f3c2fd61775bfcdd14b7e0e2a57fa082e354c72d",
         intel: "3e9786119f9e82eff6d26783d63b0f741a61c8e60fc8a77652919050020386df"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
