cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4569"
  sha256 arm:   "3f03dc4bb65c54cf8832b79b19c2ef6dcedc19abd9c77256ccee7eef15fcafe8",
         intel: "94234164ffde8e70faa0f28f448d91da8eb76f2691fe44d9752c107323c56341"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
