cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2356"
  sha256 arm:   "0bb573999538bfa1c268f8998f71979011da4003f3068f0ba2b9a2486a82c960",
         intel: "ec341452b8f692f9d9a9254a9697ca0ccfa15d3a0a53cdecb54263c54dac74a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
