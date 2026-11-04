cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2901"
  sha256 arm:   "ab5a34acae40b2626eee8fa9629dc0d9495f9bb3db5dd5055b55a40b0331396c",
         intel: "5548d2b4269fc6ad3336e9e51474b11a59e06b8f01bcd6a0cd0dff7806d2b92a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
