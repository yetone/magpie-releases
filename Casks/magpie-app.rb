cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3442"
  sha256 arm:   "48b0ad04c9c1544ebd028bd72f6fab43d6368b8c1d1252dac11372d135c5d02e",
         intel: "b8673a228a2b378989e94412cd2223c8065095d7eac2df8e64d93a9654209fc2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
