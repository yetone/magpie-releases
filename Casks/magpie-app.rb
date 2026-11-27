cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4922"
  sha256 arm:   "73536c11f16bf81d9bbf218a6e0c4e5b451111c25ace528e92afb53cab8395bc",
         intel: "8c293c95dd97c272f193fe28530e791a4f155c4a3f691f33e3d14963a5a33395"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
