cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4282"
  sha256 arm:   "39111fbeb9eb85eacb172f96f714b618a97fa8eaa8985b1e2489c05598a57648",
         intel: "f8331f16ab725bd05f351c550e345bf456414ae6a6d90047e7c33e7e0297769e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
