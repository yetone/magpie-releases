cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2670"
  sha256 arm:   "3fd0a3fb18f6dff15c53f2dbce9b413586871fdec2100536c7752f54a78ea4c7",
         intel: "b05a614b0709dbb58bbc1dff6a5d567375c032179581db9fb1c1cfc37964c8fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
